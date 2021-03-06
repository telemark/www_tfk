{def $bilde=$object}
<div class="top-image">
    <picture><!--[if IE 9]><video style="display: none;"><![endif]-->
        <source srcset="/{$bilde.data_map.image.content.[responsive_06].full_path}" media="(min-width: 1024px)">
        <source srcset="/{$bilde.data_map.image.content.[responsive_12].full_path}" media="(min-width: 846px)">
        <source srcset="/{$bilde.data_map.image.content.[responsive_09].full_path}" media="(min-width: 560px)">
        <source srcset="/{$bilde.data_map.image.content.[responsive_06].full_path}" media="(min-width: 360px)">
        <source srcset="/{$bilde.data_map.image.content.[responsive_04].full_path}"><!--[if IE 9]></video><![endif]-->
        <img srcset="/{$bilde.data_map.image.content.[responsive_04].full_path}" alt="{$ingressbilde.data_map.image.content.alternative_text}">
        <!--img.top-image__img(src="/{$bilde.data_map.image.content.[responsive_06].full_path}")-->
    </picture>
    <div class="top-image__text-wrapper">
        <div class="top-image__text">
            {if $bilde.data_map.name.has_content}
                <div class="top-image__header">
                    {attribute_view_gui attribute=$bilde.data_map.name}
                </div>
            {/if}
            <div class="top-image__body">
                {if $bilde.data_map.caption.has_content}
                    {attribute_view_gui attribute=$bilde.data_map.caption}<br />
                {/if}
                {if $bilde.data_map.foto_byline.has_content}
                    <em>Foto: {$bilde.data_map.foto_byline.content}</em>
                {/if}
            </div>
            <a href="/{$bilde.data_map.image.content.[responsive_12].full_path}" data-title="{attribute_view_gui attribute=$bilde.data_map.name}" class="top-image__expand-link js-popup--gallery"><span class="visuallyhidden">Åpne</span></a>
        </div>
    </div>
</div>