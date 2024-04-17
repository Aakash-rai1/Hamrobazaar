<?php
require ('fpdf186/fpdf.php');
session_start();
include ('includes/config.php');

class PDF extends FPDF
{
    // Page header
    function Header()
    {
        // Logo
        $imageWidth = 60;
        $pageWidth = $this->GetPageWidth();
        $imageX = ($pageWidth - $imageWidth) / 2;
        $this->Image('fpdf186/logo.jpg', $imageX, 20, $imageWidth);
        // Arial bold 15
        $this->SetFont('Arial', 'B', 15);
        // Move to the right
        $this->Cell(80);
        // Title
        $this->Cell(30, 10, 'Invoice', 0, 0, 'C');
        // Line break
        $this->Ln(20);
    }

    // Page footer
    function Footer()
    {
        // Position at 1.5 cm from bottom
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial', 'I', 8);
        // Page number
        $this->Cell(0, 10, 'Page ' . $this->PageNo() . '/{nb}', 0, 0, 'C');
    }
}

$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Arial', '', 12);

// Fetch order history
$query = mysqli_query($con, "SELECT products.productImage1 as pimg1, products.productName as pname, 
        products.id as proid, orders.productId as opid, orders.quantity as qty, 
        products.productPrice as pprice, products.shippingCharge as shippingcharge, 
        orders.orderDate as odate, orders.id as orderid 
        FROM orders 
        JOIN products ON orders.productId=products.id 
        WHERE orders.userId='" . $_SESSION['id'] . "'");

$totalAmount = 0;
$subTotal = 0;

$pdf->Cell(10, 10, 'ID', 1, 0, 'C');
$pdf->Cell(45, 10, 'Product Name', 1, 0, 'C');
$pdf->Cell(10, 10, 'Qty', 1, 0, 'C');
$pdf->Cell(25, 10, 'Unit Price', 1, 0, 'C');
$pdf->Cell(35, 10, 'Shipping Charge', 1, 0, 'C');
$pdf->Cell(40, 10, 'Order Date', 1, 0, 'C');
$pdf->Cell(30, 10, 'Order Price', 1, 1, 'C');

while ($row = mysqli_fetch_array($query)) {
    $orderPrice = ($row['qty'] * $row['pprice']) + $row['shippingcharge'];
    $subTotal += $orderPrice;
    $totalAmount += $orderPrice;
    $pdf->Cell(10, 10, $row['orderid'], 1, 0, 'C');
    $pdf->Cell(45, 10, $row['pname'], 1, 0, 'C');
    $pdf->Cell(10, 10, $row['qty'], 1, 0, 'C');
    $pdf->Cell(25, 10, $row['pprice'], 1, 0, 'C');
    $pdf->Cell(35, 10, $row['shippingcharge'], 1, 0, 'C');
    $pdf->Cell(40, 10, $row['odate'], 1, 0, 'C');
    $pdf->Cell(30, 10, $orderPrice, 1, 1, 'C');
}

// Calculate tax
$taxRate = 0.13;
$taxAmount = $subTotal * $taxRate;
$totalAmount += $taxAmount;

$pdf->Cell(195, 10, 'SubTotal: ' . $subTotal, 1, 1, 'C');
$pdf->Cell(195, 10, 'Tax Rate: ' . ($taxRate * 100) . '%', 1, 1, 'C');
$pdf->Cell(195, 10, 'Tax Amount: ' . $taxAmount, 1, 1, 'C');
// Add total amount
$pdf->Cell(195, 10, 'Total Amount: ' . $totalAmount, 1, 1, 'C');

$pdf->Output();
?>
