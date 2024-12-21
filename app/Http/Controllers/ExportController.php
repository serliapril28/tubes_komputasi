<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Dompdf\Dompdf;
use App\Models\transaksi;
use App\Models\product;

class ExportController extends Controller
{
    public function exportTransaksi(Request $request)
    {
        $dateStart = $request->input('dateStart');
        $dateEnd = $request->input('dateEnd');

        // Fetch transaction data based on dates (replace this with actual data fetching logic)
        $transactions = []; // Your logic to get transactions between $dateStart and $dateEnd

        // Load the view and pass the data
        $data = transaksi::paginate(10);
        $html = view('admin.page.transaksi', ['title' => "Transaksi", 'name' => 'Transaksi', 'data' => $data]);

        // Initialize Dompdf
        $dompdf = new Dompdf();
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Stream the PDF back to the browser
        return $dompdf->stream('transaction.pdf');
    }

    public function exportProduct(Request $request)
    {
        $dateStart = $request->input('dateStart');
        $dateEnd = $request->input('dateEnd');

        // Fetch product data based on dates (replace this with actual data fetching logic)
        $products = []; // Your logic to get products between $dateStart and $dateEnd

        // Load the view and pass the data
        $data = product::paginate(3);
        $html =  view('admin.page.product', ['title' => "Product", 'name' => 'Product', 'data' => $data]);

        // Initialize Dompdf
        $dompdf = new Dompdf();
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'landscape');
        $dompdf->render();

        // Stream the PDF back to the browser
        return $dompdf->stream('product.pdf');
    }
}
