///selectTab(tabIndex)
if (active)
{
    setActive(id, false);
    selected = argument0;
    var selectedTab = tabs[| selected];
    submenus = selectedTab[| TAB_MENU];
    setActive(id, true);
    
    // do normal step pos update
    // all submenus update size
    event_user(UPDATE_SIZES);
    
    // using size, determine RelY of submenus
    var currentY = H;
    for (var i = 0; i < ds_list_size(submenus); i++)
    {
        var inst = submenus[| i];
        inst.RelY = currentY;
        currentY += inst.H;
    }
    totalH = currentY;
    
    // update all positions
    updateAbsolutePositions(id);
}
