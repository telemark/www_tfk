{def $linkbilde=fetch( 'content', 'object', hash( 'remote_id', $node.data_map.image.content.remote_id ) )}

{if $node.data_map.internal_resource.content}
    {def $remote_object=fetch( 'content', 'object', hash( 'remote_id', $node.data_map.internal_resource.content.remote_id ) )}
    {def $this_block_url=$remote_object.main_node.url_alias|ezurl}
{else}
    {def $this_block_url=$node.data_map.url.content|ezurl}
{/if}
{if $node.data_map.open_in_new_window.content}
    {def $this_block_target='_blank'}
{else}
    {def $this_block_target='_self'}
{/if}


<div class="item item--vertical tabs__content__item__text grid__item--4-12">
    {if $linkbilde}
        <a href={$this_block_url} target="{$this_block_target}" aria-hidden="true" tabindex="-1" class="item__imglink imglink">
            <img src="/{$linkbilde.data_map.image.content.[responsive_04].full_path}" alt="{$node.data_map.alt_image_text.content|wash}" />
        </a>
    {/if}
    <div class="item__content">
        {if $node.data_map.show_title.content}
            <h2 class="item__header">
                <a href={$this_block_url} target="{$this_block_target}">{$node.data_map.title.content|wash}</a>
            </h2>
        {/if}
        {if $node.data_map.description.content}
            <div class="item__intro">{attribute_view_gui attribute=$node.data_map.description}</div>
        {/if}
        {*
        {if $node.data_map.show_url_text.content}
            {if $node.data_map.url.data_text.content}
                <p><a href={$this_block_url} target="{$this_block_target}" class="more">{$node.data_map.url.data_text}</a></p>
            {/if}
        {/if}
        *}
    </div>
</div>