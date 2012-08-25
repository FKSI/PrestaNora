{capture name=path}{l s='Error 404'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}
<h2>{l s='Page not available'}</h2>

<div id="page_not_found">
<p>{l s='We\'re sorry, but the web address you entered is no longer available.'} {l s='To find a product, please type its name in the field below'}</p>

<form action="{$base_dir}search.php" method="post">
	<fieldset>
		<p>
			<label for="search">{l s='Search our product catalog:'}</label>
			<input id="search_query" name="search_query" type="text" />
			<input type="submit" name="Submit" value="OK" class="button_mini" />
		</p>
	</fieldset>
</form>

</div>