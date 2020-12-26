<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Http\Request;
use App\Models\Providers;

class ProvidersController extends Controller
{
    public function index()
    {
      return response()->json(Providers::all(), 201);
    }
}