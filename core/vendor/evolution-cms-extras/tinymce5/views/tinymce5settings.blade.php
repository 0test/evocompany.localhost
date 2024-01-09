<div class="row form-row form-element-select">
    <label for="fe_editor_lang" class="control-label col-5 col-md-3 col-lg-2">
        TinyMCE5 Theme:
        <small class="form-text text-muted">[(tinymce5_theme)]</small>
    </label>
    <div class="col-7 col-md-9 col-lg-10">
        <div class="clearfix">
            <select class="form-control" name="tinymce5_theme" id="tinymce5_theme" onchange="documentDirty=true;" size="1">
                <option value="custom">custom.js</option>
                @foreach($themes as $theme)
                    <option value="{{ basename($theme,".js") }}"
                        @if(evo()->getConfig('tinymce5_theme') == basename($theme,".js")) selected @endif
                    >{{ $theme }}</option>
                @endforeach
            </select>
        </div>
        <small class="form-text text-muted">You can add own config in folder: <b>assets/plugins/tinymce5/configs</b></small>
    </div>
</div>