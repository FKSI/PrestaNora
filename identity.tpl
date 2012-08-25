<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

{capture name=path}<a href="{$base_dir_ssl}my-account.php">{l s='My account'}</a><span class="navigation-pipe">{$navigationPipe}</span>{l s='Your personal information'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

<h2>{l s='Your personal information'}</h2>

{include file=$tpl_dir./errors.tpl}

{if $confirmation}
	<p class="success">
		{l s='Your personal information has been successfully updated.'}
		{if $pwd_changed}<br />{l s='Your password has been sent to your e-mail:'} {$email|escape:'htmlall':'UTF-8'}{/if}
	</p>
{else}

	<p class="add_margin">{l s='Do not hesitate to update your personal information if it has changed.'}</p>
	<form action="{$base_dir_ssl}identity.php" method="post" class="std add_margin">
		<fieldset>
			<p class="radio">
				<span>{l s='Gender :'}</span>
				<input type="radio" id="id_gender1" name="id_gender" value="1" {if $smarty.post.id_gender == 1 OR !$smarty.post.id_gender}checked="checked"{/if} />
				<label for="id_gender1">{l s='Mr.'}</label>
				<input type="radio" id="id_gender2" name="id_gender" value="2" {if $smarty.post.id_gender == 2}checked="checked"{/if} />
				<label for="id_gender2">{l s='Ms.'}</label>
			</p>
			<p class="required">
				<label for="firstname"><sup>*</sup>{l s='First name :'}</label>
				<input type="text" id="firstname" name="firstname" value="{$smarty.post.firstname}" />
			</p>
			<p class="required">
				<label for="lastname"><sup>*</sup>{l s='Last name :'}</label>
				<input type="text" name="lastname" id="lastname" value="{$smarty.post.lastname}" />
			</p>
			<p class="required">
				<label for="email"><sup>*</sup>{l s='Email :'}</label>
				<input type="text" name="email" id="email" value="{$smarty.post.email}" />
			</p>
			<p class="required">
				<label for="old_passwd"><sup>*</sup>{l s='Current password :'}</label>
				<input type="password" name="old_passwd" id="old_passwd" />
			</p>
			<p class="password">
				<label for="passwd">{l s='Password :'}</label>
				<input type="password" name="passwd" id="passwd" />
			</p>
			<p class="password">
				<label for="confirmation">{l s='Confirmation :'}</label>
				<input type="password" name="confirmation" id="confirmation" />
			</p>
			<p class="select">
				<label>{l s='Birthday :'}</label>
				<select name="days" id="days">
					<option value="">-</option>
					{foreach from=$days item=v}
						<option value="{$v|escape:'htmlall':'UTF-8'}" {if ($sl_day == $v)}selected="selected"{/if}>{$v|escape:'htmlall':'UTF-8'}&nbsp;&nbsp;</option>
					{/foreach}
				</select>
				{*
					{l s='January'}
					{l s='February'}
					{l s='March'}
					{l s='April'}
					{l s='May'}
					{l s='June'}
					{l s='July'}
					{l s='August'}
					{l s='September'}
					{l s='October'}
					{l s='November'}
					{l s='December'}
				*}
				<select id="months" name="months">
					<option value="">-</option>
					{foreach from=$months key=k item=v}
						<option value="{$k|escape:'htmlall':'UTF-8'}" {if ($sl_month == $k)}selected="selected"{/if}>{l s="$v"}&nbsp;</option>
					{/foreach}
				</select>
				<select id="years" name="years">
					<option value="">-</option>
					{foreach from=$years item=v}
						<option value="{$v|escape:'htmlall':'UTF-8'}" {if ($sl_year == $v)}selected="selected"{/if}>{$v|escape:'htmlall':'UTF-8'}&nbsp;&nbsp;</option>
					{/foreach}
				</select>
			</p>
			{if $need_identification_number}
			<p class="required text">
				<label for="dni">{l s='Identication number'}</label>
				<input type="text" class="text" name="dni" id="dni" value="{if isset($smarty.post.dni)}{$smarty.post.dni}{/if}" />
				<span class="form_info">{l s='DNI / NIF / NIE'}</span>
			</p>
			{/if}
			<p class="checkbox">
				<input type="checkbox" id="newsletter" name="newsletter" value="1" {if $smarty.post.newsletter == 1} checked="checked"{/if} />
				<label for="newsletter">{l s='Sign up for our newsletter'}</label>
			</p>
			<p class="checkbox">
				<input type="checkbox" name="optin" id="optin" value="1" {if $smarty.post.optin == 1} checked="checked"{/if} />
				<label for="optin">{l s='Receive special offers from our partners'}</label>
			</p>
			<p class="submit">
				<input type="submit" class="button" name="submitIdentity" value="{l s='Save'}" />
			</p>
		</fieldset>
	</form>
	<p id="security_informations">
		{l s='[Insert customer data privacy clause or law here, if applicable]'}
	</p>
{/if}

<ul class="footer_links">
	<li><a href="{$base_dir_ssl}my-account.php"><img src="{$img_dir}icon/my-account.gif" alt="" class="icon" /></a><a href="{$base_dir_ssl}my-account.php">{l s='Back to Your Account'}</a></li>
</ul>