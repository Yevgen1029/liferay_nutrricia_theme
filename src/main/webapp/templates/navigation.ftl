<nav>
        <header class="page-header js-page-header">
            <div class="main-row">
                <div class="main-inner main-inner--space">
                    <div class="page-header__inner">
                        <div class="inner__logo">
                            <a href="${site_default_url}" title="Welcome to Nutricia">
                                <img class="logo"
                                     src="https://www.nutricia.com/etc/designs/nutricia/clientlibs-all/images/early-life-nutrition-logo.png"
                                     alt="logo"/>
                            </a>
                        </div>
                        <ul class="inner__desktop-nav">
                        <#list nav_items as nav_item>
                            <#assign
                            nav_item_attr_has_popup = ""
                            nav_item_attr_selected = ""
                            nav_item_css_class = ""
                            nav_item_layout = nav_item.getLayout()
                            />

                            <#if nav_item.isSelected()>
                                <#assign
                                nav_item_attr_has_popup = "aria-haspopup='true'"
                                nav_item_attr_selected = "aria-selected='true'"
                                nav_item_css_class = "selected"
                                />
                            </#if>

                            <li class="main-desktop-menu__link" data-category="early-life-nutrition">
                                <a ${nav_item_attr_has_popup}
                                        href="${nav_item.getURL()}"
                                        class="label js-desktop-menu-link"><span><@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}</span></a>

                            </li>
                        </#list>
                        </ul>
                    </div>
                </div>
            </div>

        </header>
</nav>