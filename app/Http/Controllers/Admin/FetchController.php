<?php

namespace App\Http\Controllers\Admin;

use App\Models\Eform\Form;
use Illuminate\Http\Request;
use App\Models\Eform\FormColoumn;
use App\Models\Eform\FormCategory;
use App\Http\Controllers\Controller;
use App\Models\Eform\FormColoumnMult;
use App\Models\Eform\FormSubcategory;
use RealRashid\SweetAlert\Facades\Alert;

class FetchController extends Controller
{

    public function form_subcategory(  $value){

        $form_categories= FormCategory::find($value);
        $form_subcategories= FormSubcategory::where([ ['form_category_id' ,$value], ])->get();
        return view('admin.Eform.fetch.form_subcategory' , compact(['value' , 'form_categories' , 'form_subcategories'  ]));


    }
    public function form(  $value){

        $forms= Form::find($value);
        $form_coloumns= FormColoumn::where([ ['form_id' ,$value], ])->get();
        return view('admin.Eform.fetch.form' , compact(['value' , 'forms' , 'form_coloumns'  ]));


    }

    public function form_coloumn(  $value){

        $form_coloumns= FormColoumn::find($value);
        $form_coloumn_mults= FormColoumnMult::where([ ['form_coloumn_id' ,$value], ])->get();
        return view('admin.Eform.fetch.form_coloumn' , compact(['value' , 'form_coloumn_mults' , 'form_coloumns'  ]));


    }



}
