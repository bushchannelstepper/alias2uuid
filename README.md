# alias2uuid
Returns full UUID of a SmartOS zone for given alias


**vmuuid <alias>**

Often it is more convenient to address your zones by alias rather than their UUID.  E.g:

```
vmadm info `vmuuid dangerzone` 
```

might resolve to

```
vmadm info e5ed2dc5-4049-46f4-ddd0-e3c1d385627c
```

and 

```
zlogin `vmuuid dronezone`
```
maybe
```
zlogin e968fed3-9100-47d5-9426-88d76e0b388f
```

NB:  as it is apparently possible for multiple zones to have the same alias, it falls to the user of this tool to keep that in mind.  From `vmadm`'s output, it will pluck out the UUID for the first zone with an alias that exactly and fully matches the given argument.

It is likely to be reasonably portable across Illumos systems with BASH.

You can place it into `/opt/local/bin`, or wherever else in $PATH you like.
