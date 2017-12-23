///selectTab(tabIndex)
if (active)
{
    setActive(id, false);
    selected = argument0;
    var selectedTab = tabs[| selected];
    submenus = selectedTab[| TAB_MENU];
    setActive(id, true);
}
