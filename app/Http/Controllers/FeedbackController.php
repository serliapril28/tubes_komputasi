<?php

namespace App\Http\Controllers;

use App\Models\Feedback;
use Illuminate\Http\Request;

class FeedbackController extends Controller
{
    public function store(Request $request)
    {
        // Validasi input
        $validated = $request->validate([
            'email' => 'required|email',
            'pesan' => 'required|string|max:1000',
        ]);

        // Simpan data feedback ke database
        Feedback::create([
            'email' => $validated['email'],
            'pesan' => $validated['pesan'],
        ]);
        Feedback::create($validated);


        // Redirect ke halaman feedback setelah berhasil
        return redirect()->route('pelanggan.page.contact_us')->with('success', 'Feedback berhasil dikirim!');
    }

    public function index()
    {
        // Ambil semua feedback dari database
        $feedbacks = Feedback::all();

        // Kirim data feedback ke view
        return view('admin.page.feedback', compact('feedbacks'));
    }
}
