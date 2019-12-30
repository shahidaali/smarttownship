<?php
namespace App\FormFields;

use TCG\Voyager\FormFields\AbstractHandler;

class CascadingSelectFormField extends AbstractHandler
{
    protected $codename = 'cascading_select';

    public function createContent($row, $dataType, $dataTypeContent, $options)
    {
        return view('vendor.voyager.formfields.cascading-select', [
            'row' => $row,
            'options' => $options,
            'dataType' => $dataType,
            'dataTypeContent' => $dataTypeContent
        ]);
    }
}