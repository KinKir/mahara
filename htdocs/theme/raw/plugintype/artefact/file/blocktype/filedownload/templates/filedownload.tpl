<ul class="list-group">
{foreach $files file}
    <li class="filedownload-item list-group-item">
        <a href="{$file.downloadurl}" class="outer-link icon-on-hover">
            <span class="sr-only">
                {str tag=Download section=artefact.file} {$file.title}
            </span>
        </a>

        {if $file.iconsrc}
            <img src="{$file.iconsrc}" alt="" class="file-icon text-inline" />
        {else}
            <span class="icon icon-{$file.artefacttype} icon-lg left"></span>
        {/if}

        <h4 class="title list-group-item-heading text-inline">
            <a href="{$WWWROOT}artefact/artefact.php?artefact={$file.id}&view={$viewid}" class="inner-link">
                 {$file.title}
                 <span class="sr-only">
                    {str tag=Details section=artefact.file}
                </span>
            </a>
        </h4>
        <span class="text-small text-lighttone"> -
            {$file.ctime|format_date:'strftimedaydate'}
            [{$file.size|display_size}]
        </span>
        <span class="icon icon-download icon-lg pull-right text-watermark icon-action"></span>
        {if $file.description}
        <div class="file-description">
            <p class="text-small">
                {$file.description}
            </p>
        </div>
        {/if}
    </li>
    {/foreach}
</ul>