# kak-toggle-map

Kakoune plugin for creating togglable commands
Defines the command "toggle-map" which takes two mappings instead of one
The first mapping is for the toggled-on mode, and the second is the toggled-off.

# Example: hlsearch

The following will make the key <F3> toggle highlighting of the search regex:
```
toggle-map global normal <F3> hlsearch-on hlsearch-off

define-command hlsearch-on %{
    add-highlighter global/hltoggle dynregex '%reg{/}' 0:white,rgb:222222+ub
}

define-command hlsearch-off %{
    remove-highlighter global/hltoggle
}
```
