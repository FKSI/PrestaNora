{if isset($errors) && $errors}
	<div class="error">
		<ul>
		{foreach from=$errors key=k item=error}
			<li>{$error}</li>
		{/foreach}
		</ul>
	</div>
{/if}