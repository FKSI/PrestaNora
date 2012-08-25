{capture name=path}{l s='Forgot your password'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

<h2>{l s='Forgot your password'}</h2>

{include file=$tpl_dir./errors.tpl}
<div class="add_margin">

{if isset($confirmation)}
<p class="success">{l s='Your password has been successfully reset and has been sent to your e-mail address:'} {$email|escape:'htmlall':'UTF-8'}</p>
{else}
<form action="{$request_uri|escape:'htmlall':'UTF-8'}" method="post" class="std">
	<fieldset>
        <p class="text">{l s='Please enter your e-mail address used to register. We will e-mail you your new password.'}</p>
		<p>
			<label for="email">{l s='Type your e-mail address:'}</label>
			<input type="text" id="email" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email|escape:'htmlall'|stripslashes}{/if}" />
		</p>
		<p class="submit">
			<input type="submit" class="button" value="{l s='Retrieve'}" />
		</p>
	</fieldset>
</form>
{/if}
</div>
