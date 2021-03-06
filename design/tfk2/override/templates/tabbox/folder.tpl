<div class="item">
    {def $ingressbilde=fetch( 'content', 'object', hash( 'remote_id', $node.data_map.image.content.remote_id ) )}

    {if $ingressbilde}
    <a href={$node.url_alias|ezurl}><img src="/{$ingressbilde.data_map.image.content.[listebilde].full_path}" width="228" alt="Les mer om {$node.data_map.name.content|wash()}" /></a>
    {/if}
    <div class="holder">
        <h2 class="title"><a href={$node.url_alias|ezurl}>{$node.data_map.name.content|wash()}</a></h2>
        {if $node.data_map.short_intro.content}
            <p>{attribute_view_gui attribute=$node.data_map.short_intro}</p>
        {else}
            {def $xml_content=$node.data_map.short_description.content.xml_data}
            {def $text_content=$xml_content|strip_tags()}
            <p>{$text_content|shorten(85)}</p>
        {/if}
        {if $node.data_map.description.has_content }
        <a href={$node.url_alias|ezurl} class="more">Les mer</a>
        {/if}
    </div>
</div>