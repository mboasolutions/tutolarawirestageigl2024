<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\Command;
use App\Models\CommandLine;
use Illuminate\Http\Request;

class InvoiceController extends Controller
{
    public function index(CommandLine $cl)
    {
        $data['prodcommands'] = Command::where('commandline_id', $cl->id)->get();
        //$data['client'] = Client::where('id', $cl->client_id)->get();
        $data['total'] = $cl->total_command;
        $data['client_name'] =  $cl->client->name;
        $data['client_email'] = $cl->client->email;
        $data['client_address'] =  $cl->client->address;
        return view('invoice', $data);
    }
}
