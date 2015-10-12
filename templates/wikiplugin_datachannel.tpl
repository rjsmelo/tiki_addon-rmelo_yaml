{if !empty($datachannel_feedbacks)}
{remarksbox type='note' title="{tr}Feedback{/tr}"}
	{foreach from=$datachannel_feedbacks item=feedback}
		{$feedback|escape}<br>
	{/foreach}
{/remarksbox}
{/if}
<form method="post" action="#{$datachannel_execution}"{$form_class_attr}{$datachannel_form_onsubmit}>
    <div class="form-group">
        <label>text:</label>
        <div>
            <input type="text" name="text" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <label>Radio:</label>
        <div>
            <label> A
                <input name="radio" value="radio-a" type="radio">
            </label>
            <label> B
                <input name="radio" value="radio-b" type="radio">
            </label>
            <label> C
                <input name="radio" value="radio-c" type="radio">
            </label>
            <label> D
                <input name="radio" value="radio-d" type="radio">
            </label>
        </div>
    </div>
    <div class="form-group">
        <label>CheckBox:</label>
        <div>
            <label> A
            <input name="checkbox[]" value="checkbox-a" type="checkbox">
            </label>
            <label> B
            <input name="checkbox[]" value="checkbox-b" type="checkbox">
            </label>
            <label> C
            <input name="checkbox[]" value="checkbox-c" type="checkbox">
            </label>
            <label> D
            <input name="checkbox[]" value="checkbox-d" type="checkbox">
            </label>
        </div>
    </div>
    <div class="form-group">
        <label>Dropdown list:</label>
        <div>
            <select name="select">
                <option value="select-a">A</option>
                <option value="select-b">B</option>
                <option value="select-c">C</option>
                <option value="select-d">D</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label>text area:</label>
        <div>
            <textarea name="textarea"></textarea>
        </div>
    </div>
	<div class="submit_row">
		<input type="hidden" name="datachannel_execution" value="{$datachannel_execution|escape}">
		<input type="submit" class="btn btn-default btn-sm" value="{tr}{$button_label}{/tr}">
	</div>
</form>
