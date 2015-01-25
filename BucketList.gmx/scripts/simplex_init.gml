var _simplex_perm_list = ds_list_create();
_simplex_perm = _simplex_perm_list;
for (i=0; i<512; i++) {
ds_list_add(_simplex_perm_list,floor(random(255)));
}
simplex_set_perm(_simplex_perm_list);
return _simplex_perm_list;

