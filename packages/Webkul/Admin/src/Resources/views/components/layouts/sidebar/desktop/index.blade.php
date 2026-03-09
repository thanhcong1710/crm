<div
    ref="sidebar"
    class="duration-80 fixed top-[60px] z-[10002] h-full w-[200px] border-gray-200 bg-white pt-4 transition-all group-[.sidebar-collapsed]/container:w-[70px] dark:border-gray-800 dark:bg-gray-900 max-lg:hidden ltr:border-r rtl:border-l"
    @mouseover="handleMouseOver"
    @mouseleave="handleMouseLeave"
>
    <div class="journal-scroll h-[calc(100vh-100px)] overflow-hidden group-[.sidebar-collapsed]/container:overflow-visible">
        <nav class="sidebar-rounded grid w-full gap-2">
            <!-- Navigation Menu -->
            @foreach (menu()->getItems('admin') as $menuItem)
                <div class="px-4 group/item {{ $menuItem->isActive() ? 'active' : 'inactive' }}">
                    <a
                        class="flex gap-2 p-1.5 items-center cursor-pointer hover:rounded-lg {{ $menuItem->isActive() == 'active' ? 'bg-brandColor rounded-lg' : ' hover:bg-gray-100 hover:dark:bg-gray-950' }} peer"
                        href="{{ ! in_array($menuItem->getKey(), ['settings', 'configuration']) && $menuItem->haveChildren() ? 'javascript:void(0)' : $menuItem->getUrl() }}"
                        @click="isMenuActive = isMenuActive === '{{$menuItem->getKey()}}' ? '' : '{{$menuItem->getKey()}}'; hoveringMenu = isMenuActive"
                    >
                        <span class="{{ $menuItem->getIcon() }} text-2xl {{ $menuItem->isActive() ? 'text-white' : ''}}"></span>

                        <div class="flex-1 flex justify-between items-center text-gray-600 dark:text-gray-300 font-medium whitespace-nowrap group-[.sidebar-collapsed]/container:hidden {{ $menuItem->isActive() ? 'text-white' : ''}} group">
                            <p>{{ core()->getConfigData('general.settings.menu.'.$menuItem->getKey()) ?? $menuItem->getName() }}</p>
                        
                            @if ( ! in_array($menuItem->getKey(), ['settings', 'configuration']) && $menuItem->haveChildren())
                                <i 
                                    class="icon-right-arrow rtl:icon-left-arrow invisible text-2xl group-hover/item:visible {{ $menuItem->isActive() ? 'text-white' : ''}} transition-transform duration-200"
                                    :class="[(isMenuActive === '{{$menuItem->getKey()}}' || hoveringMenu === '{{$menuItem->getKey()}}') ? 'rotate-90' : '']"
                                ></i>
                            @endif
                        </div>
                    </a>

                    <!-- Submenu -->
                    @if (
                        ! in_array($menuItem->getKey(), ['settings', 'configuration'])
                        && $menuItem->haveChildren()
                    )
                        <div
                            class="flex-col gap-1 mt-1 pl-8 group-[.sidebar-collapsed]/container:hidden transition-all duration-300 overflow-hidden"
                            :class="[(isMenuActive === '{{$menuItem->getKey()}}' || hoveringMenu === '{{$menuItem->getKey()}}') ? '!flex' : 'hidden']"
                        >
                            @foreach ($menuItem->getChildren() as $subMenuItem)
                                <div>
                                    <a
                                        href="{{ $subMenuItem->getUrl() }}"
                                        class="flex gap-2 p-1.5 items-center cursor-pointer hover:rounded-lg {{ $subMenuItem->isActive() == 'active' ? 'bg-brandColor text-white rounded-lg' : 'hover:bg-gray-100 hover:dark:bg-gray-950 text-gray-600 dark:text-gray-300' }} transition-all"
                                    >
                                        <p class="font-medium whitespace-nowrap text-sm {{ $subMenuItem->isActive() ? 'text-white' : ''}}">
                                            {{ core()->getConfigData('general.settings.menu.'.$subMenuItem->getKey()) ?? $subMenuItem->getName() }}
                                        </p>
                                    </a>
                                </div>
                            @endforeach
                        </div>
                    @endif
                </div>
            @endforeach
        </nav>
    </div>
</div>