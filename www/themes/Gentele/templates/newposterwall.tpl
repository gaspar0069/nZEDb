<div class="category" style="padding-bottom:20px;">
	{if $error}
		<h2>{$error}</h2>
	{else}
		<h2 class="main-title">
			<a class="see-more" href="{$smarty.const.WWW_TOP}/{$goto}">see more &raquo;</a>
			The <strong>newest releases</strong> for
			<strong>
				<select name="MySelect" id="MySelect"
						onchange="window.location='{$smarty.const.WWW_TOP}/newposterwall?t=' + this.value;">
					{foreach $types as $newtype}
						<option {if $type == $newtype}selected="selected"{/if} value="{$newtype}">
							{$newtype}
						</option>
					{/foreach}
				</select>
			</strong>
		</h2>
		<div class="main-wrapper">
			<div class="main-content">
				<!-- library -->
				<div class="library-wrapper">
					{foreach $newest as $result}
						<div
								{if $type == 'Console'}
									class="library-console"
								{elseif $type == 'Movies'}
									class="library-show"
								{elseif $type == 'XXX'}
									class="library-show"
								{elseif $type == 'Audio'}
									class="library-music"
								{elseif $type == 'Books'}
									class="library-show"
								{elseif $type == 'PC'}
									class="library-games"
								{elseif $type == 'TV'}
									class="library-games"
								{/if}
						>
							<div class="poster">
								<a class="titleinfo" title="{$result.guid}"
								   href="{$smarty.const.WWW_TOP}/details/{$result.guid}">
									{if $type == 'Console'}
										<img width="130px" alt=""
											 src="{$smarty.const.WWW_TOP}/covers/console/{$result.consoleinfo_id}.jpg"/>
									{elseif $type == 'Movies'}
										<img width="140px" height="205px" alt=""
											 src="{$smarty.const.WWW_TOP}/covers/movies/{$result.imdbid}-cover.jpg"/>
									{elseif $type == 'XXX'}
										<img width="140px" height="205px" alt=""
											 src="{$smarty.const.WWW_TOP}/covers/xxx/{$result.xxxinfo_id}-cover.jpg"/>
									{elseif $type == 'Audio'}
										<img height="250px" width="250px" alt=""
											 src="{$smarty.const.WWW_TOP}/covers/music/{$result.musicinfo_id}.jpg"/>
									{elseif $type == 'Books'}
										<img height="140px" width="205px" alt=""
											 src="{$smarty.const.WWW_TOP}/covers/book/{$result.bookinfo_id}.jpg"/>
									{elseif $type == 'PC'}
										<img height="130px" width="130px" alt=""
											 src="{$smarty.const.WWW_TOP}/covers/games/{$result.gamesinfo_id}.jpg"/>
									{elseif $type == 'TV'}
										<img height="130px" width="130px" alt=""
											 src="{$smarty.const.WWW_TOP}/covers/tvshows/{$result.videos_id}.jpg"/>
									{elseif $type == 'Anime'}
										<img width="130px" height="130px" alt=""
											 src="{$smarty.const.WWW_TOP}/covers/anime/{$result.anidbid}.jpg"/>
									{/if}
								</a>
							</div>
							<div class="rating-pod" id="guid{$result.guid}">
								<div class="icons divlink col-lg-4">
									<span class="btn btn-hover btn-default btn-sm text-muted"><a
												title="Download Nzb"
												href="{$smarty.const.WWW_TOP}/getnzb/{$result.guid}">
											<i class="icon_nzb fa fa-cloud-download" style="background-image: none"></i></a>
									</span>
									<span class="btn btn-hover btn-default btn-sm text-muted"
										  title="Send to my Download Basket"><i
												class="icon_cart fa fa-shopping-basket" style="background-image: none"></i></span>
									{if isset($sabintegrated) && $sabintegrated !=""}
										<span class="btn btn-hover btn-default btn-sm text-muted"
											  title="Send to my Queue"><i class="icon_sab fa fa-share" style="background-image: none"></i></span>
									{/if}
								</div>
							</div>
							<a class="plays" href="#"></a>
						</div>
					{/foreach}
				</div>
			</div>
		</div>
	{/if}
</div>
