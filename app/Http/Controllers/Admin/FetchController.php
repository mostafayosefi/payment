<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\Eform\FormCategory;
use App\Http\Controllers\Controller;
use App\Models\Eform\FormSubcategory;
use RealRashid\SweetAlert\Facades\Alert;

class FetchController extends Controller
{

    public function form_subcategory(  $value){

        $form_categories= FormCategory::find($value);
        $form_subcategories= FormSubcategory::where([ ['form_category_id' ,$value], ])->get();
        return view('admin.Eform.fetch.form_subcategory' , compact(['value' , 'form_categories' , 'form_subcategories'  ]));


    }



}
