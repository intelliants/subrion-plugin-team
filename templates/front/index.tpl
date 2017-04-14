{if !empty($team)}
	<div class="row team">
		{foreach $team as $item}
			<div class="col-md-3 m-b">
				<div class="item">
					{if !empty($item.pictures)}
						<a href="#" data-toggle="modal" data-target="#member-{$item.id}">
							{ia_image file=$item.pictures[0] title=$item.title type='thumbnail' class='img-responsive'}
						</a>
					{/if}
					<h4><a href="#" data-toggle="modal" data-target="#member-{$item.id}">{$item.title|escape:'html'}</a></h4>
					{if !empty($item.position)}
						<p>{$item.position|escape:'html'}</p>
					{/if}
				</div>

				<div class="modal fade" id="member-{$item.id}" tabindex="-1" role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="{lang ley='close'}"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title">
									{$item.title|escape:'html'}
								</h4>
							</div>
							<div class="modal-body">
								{if !empty($item.pictures)}
									{ia_image file=$item.pictures[0] title=$item.title type='large' class='img-responsive'}
								{/if}
								{if !empty($item.position)}
									<h5 class="m-y"><strong>{$item.position|escape:'html'}</strong></h5>
								{/if}
								{if !empty($item.description)}
									{$item.description}
								{/if}
							</div>
						</div>
					</div>
				</div>
			</div>

			{if $item@iteration % 4 == 0 && !$item@last}
				</div>
				<div class="row team">
			{/if}
		{/foreach}
	</div>
{else}
	<div class="alert alert-info">{lang key='no_members'}</div>
{/if}