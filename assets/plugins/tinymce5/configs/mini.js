let mini = {
    selector: selector_mini,
    document_base_url: modx_site_url,
    language: lang,
    language_url: modx_site_url + 'assets/plugins/tinymce5/langs/' + lang + '.js',
    plugins: 'print preview importcss searchreplace autolink directionality visualblocks visualchars fullscreen image link media template codesample table charmap hr paste pagebreak nonbreaking anchor toc insertdatetime advlist save lists wordcount imagetools textpattern noneditable  charmap emoticons code',

    toolbar1: 'bold italic underline strikethrough | link unlink anchor image media',

    toolbar2: 'alignleft aligncenter alignright alignjustify  bullist numlist | fullscreen code ',

    quickbars_selection_toolbar: false,
    contextmenu: false,
    image_advtab: true,
    importcss_append: true,
    menubar: false,
    statusbar: false,
    contextmenu_never_use_native: true,
    relative_urls:true,
    remove_script_host:true,
    convert_urls:true,
    resize:true,
    forced_root_block:'p',
    entity_encoding:'named',
    schema:'html5',
    element_format:'xhtml',

    image_class_list:[{title: 'None', value: ''},{title: 'Float left', value: 'justifyleft'},{title: 'Float right', value: 'justifyright'},{title: 'Image Responsive',value: 'img-responsive'}],

    browser_spellcheck:false,
    paste_word_valid_elements:'a[href|name],p,b,strong,i,em,h1,h2,h3,h4,h5,h6,table,th,td[colspan|rowspan],tr,thead,tfoot,tbody,br,hr,sub,sup,u',

    height: 200,
    image_caption: true,
    skin: 'oxide',
    setup:function(ed) { ed.on("change", function(e) { documentDirty=true; }); },
    save_onsavecallback:function () { documentDirty=false; document.getElementById("stay").value = 2; document.mutate.save.click(); },
    file_picker_callback: function(callback, value, meta) {
        filePicker(callback, value, meta)
    }
}
