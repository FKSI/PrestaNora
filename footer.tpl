	{if !$content_only}
			</div>

<!-- Right -->
   {if $page_name == 'index'}{else}
      <div id="right_column">
         {$HOOK_RIGHT_COLUMN}
      </div>
   {/if}
   		</div>
            </div>
<!-- Footer -->
		<div id="footer">
			<div id="footer_wrapper">
            	{$HOOK_FOOTER}
            </div>
		</div>
        </div>
	{/if}
	</body>
</html>
