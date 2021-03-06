<div class="item item--vertical tabs__content__item__text grid__item--3-6">
    {def $ingressbilde=fetch( 'content', 'object', hash( 'remote_id', $node.data_map.image.content.remote_id ) )}
    {if $ingressbilde}
        <a href={$node.url_alias|ezurl} aria-hidden="true" tabindex="-1" class="item__imglink imglink">
            <img src="/{$ingressbilde.data_map.image.content.[responsive_03].full_path}" alt="Les artikkelen: {$node.data_map.title.content|wash()}"/>
        </a>
    {/if}
    <div class="item__content">
        <h2 class="item__header">
            <a href={$node.url_alias|ezurl}>{$node.data_map.title.content|wash()}</a>
        </h2>
        {if $node.data_map.show_publishdate.content}
            <span class="sidenote">Publisert {$node.object.published|l10n(date)}</span>
        {/if}
        {if $node.data_map.short_intro.content}
            <div class="item__intro">{attribute_view_gui attribute=$node.data_map.short_intro}</div>
        {else}
            {def $xml_content=$node.data_map.intro.content.xml_data}
            {def $text_content=$xml_content|strip_tags()}
            <div class="item__intro">{$text_content|shorten(85)}</div>
        {/if}
        {*
        {if $node.data_map.body.has_content }
            <div class="item__intro"><a href={$node.url_alias|ezurl} class="more">Les mer</a></div>
         {/if}
         *}
    </div>
</div>


{*
<div class="item">
    {def $ingressbilde=fetch( 'content', 'object', hash( 'remote_id', $node.data_map.image.content.remote_id ) )}

    {if $ingressbilde}
    <a href={$node.url_alias|ezurl}><img src="/{$ingressbilde.data_map.image.content.[listebilde].full_path}" width="228" alt="Les artikkelen: {$node.data_map.title.content|wash()}" /></a>
    {/if}
    <div class="holder">
        <h2 class="title"><a href={$node.url_alias|ezurl}>{$node.data_map.title.content|wash()}</a></h2>
        {if $node.data_map.show_publishdate.content}
           <em class="date">Oppdatert {$node.object.modified|l10n(date)}</em>
        {/if}
        {if $node.data_map.short_intro.content}
            <p>{attribute_view_gui attribute=$node.data_map.short_intro}</p>
        {else}
            {def $xml_content=$node.data_map.intro.content.xml_data}
            {def $text_content=$xml_content|strip_tags()}
            <p>{$text_content|shorten(85)}</p>
        {/if}
        {if $node.data_map.body.has_content }
        <a href={$node.url_alias|ezurl} class="more">Les mer</a>
        {/if}
    </div>
</div>
*}