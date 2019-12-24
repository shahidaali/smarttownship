<?php
namespace Connectpx\Custom\FormFields;
use TCG\Voyager\FormFields\AbstractHandler;

class CascadingSelectFormField extends AbstractHandler
{
    protected $codename = 'cascadingselect';

    public function createContent($row, $dataType, $dataTypeContent, $options)
    {
        return view('custom::formfields.cascadingselect', [
            'row' => $row,
            'options' => $options,
            'dataType' => $dataType,
            'dataTypeContent' => $dataTypeContent
        ]);
    }
}