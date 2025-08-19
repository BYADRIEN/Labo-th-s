<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ContactUsController extends Controller
{
    public function index()
    {
        return view('contact-us');
    }

    public function send(Request $request)
    {
        $request->validate([
            'name'    => 'required|string|max:255',
            'email'   => 'required|email',
            'subject' => 'required|string|max:255',
            'message' => 'required|string',
        ]);

        // envoi de l'email
        Mail::raw($request->message, function ($mail) use ($request) {
            $mail->from($request->email, $request->name)
                 ->to('selleadrien@gmail.com') // ton email ou Mailtrap
                 ->subject($request->subject);
        });

        return back()->with('success', 'Merci, ton message a bien été envoyé !');
    }
}