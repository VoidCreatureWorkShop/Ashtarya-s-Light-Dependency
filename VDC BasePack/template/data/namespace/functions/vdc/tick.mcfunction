#按module_check中的替换字段名单一起替换即可。
function namespace:tick
execute unless score worksName vdc_checkerror matches 1.. run schedule function namespace:vdc/tick