<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
    <title>${the_title} - ${company_name}</title>

    <meta content="initial-scale=1.0, width=device-width" name="viewport"/>

<@liferay_util["include"] page=top_head_include />

    <#--<meta name="apple-mobile-web-app-title" content="Nutricia">-->
    <#--<meta name="application-name" content="Nutricia">-->
    <#--<meta name="msapplication-config"-->
          <#--content="https://www.nutricia.com/etc/designs/nutricia/clientlibs-all/images/favicons/browserconfig.xml">-->
    <#--<meta name="theme-color" content="#ffffff">-->

    <#--<meta name="robots" content="index, follow"/>-->
    <#--<meta name="google-site-verification" content="120kLWImQj2P-HuQax8bbrIjtIP5gMJqtyKl5EzilIA/">-->


</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

    <div>
    <#if has_navigation && is_setup_complete>
        <#include "${full_templates_path}/navigation.ftl" />
    </#if>
    </div>

    <section id="content">
    <#--<h1 class="hide-accessible">${the_title}</h1>-->

    <#if selectable>
        <@liferay_util["include"] page=content_include />
    <#else>
    ${portletDisplay.recycle()}

    ${portletDisplay.setTitle(the_title)}

        <@liferay_theme["wrap-portlet"] page="portlet.ftl">
            <@liferay_util["include"] page=content_include />
        </@>
    </#if>
    </section>

    <footer class="page-footer js-page-footer">
        <div class="main-row main-row--border-top">
            <div class="main-inner main-inner--space">
                <div class="page-footer__contact">
                    <a href="#" class="button page-footer__btn-scroll-top" id="js-page-footer__btn-scroll-top">
                        <span class="label">Scroll page to top</span>
                        <svg aria-hidden="true" class="arrow" viewBox="0 0 28 48">
                            <use xlink:href="https://www.nutricia.com/etc/designs/nutricia/clientlibs-all/images/arrow-right-thin.svg#arrow-right-thin"></use>
                        </svg>
                    </a>
                </div>
            </div>
        </div>
        <div class="main-row main-row--medium-gray main-row--vertical-spacing-medium">
            <div class="main-inner main-inner--space">
                <div class="page-footer__global-legal">
                    <a class="button page-footer__btn-global js-open-country-selector">
                    <span class="button__inner">
                        <svg aria-hidden="true" viewBox="0 0 100 100">
                            <use xlink:href="https://www.nutricia.com/etc/designs/nutricia/clientlibs-all/images/global.svg#global"></use>
                        </svg>
                        <span class="label">Nutricia Global</span>
                        <svg aria-hidden="true" class="arrow" viewBox="0 0 32 48">
                            <use xlink:href="https://www.nutricia.com/etc/designs/nutricia/clientlibs-all/images/arrow-right-thick.svg#arrow-right-thick"></use>
                        </svg>
                    </span>
                    </a>
                    <div class="page-footer__global-legal-links-wrapper">
                        <div class="page-footer__global-legal-links">

                            <a href="/en/terms-of-use.html">Terms of Use </a>

                            <a href="/en/privacy-and-cookie-policy.html">Privacy and Cookie Policy </a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-row main-row--lighter-gray main-row--vertical-spacing-medium">
            <div class="main-inner main-inner--space">
                <div class="page-footer__logo-copyright">
                    <a href="/" title="Nutricia Homepage" class="logo">
                        <span class="label">Nutricia</span>
                        <svg aria-hidden="true" viewBox="0 0 235 39" width="235" height="39">
                            <use xlink:href="https://www.nutricia.com/etc/designs/nutricia/clientlibs-all/images/nutricia-logo.svg#nutricia-logo"></use>
                        </svg>
                    </a>
                    <span class="copyright">ⓒ 2017 Danone Nutricia</span>
                </div>
            </div>
        </div>
    </footer>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />


<script type="text/javascript"
        src="https://www.nutricia.com/etc/clientlibs/granite/jquery.min.d311399a202bbfe8f6b94a4546a2a025.js"></script>
<script type="text/javascript"
        src="https://www.nutricia.com/etc/clientlibs/granite/utils.min.960d4a24cc6fa3b473b4ae2018d5c364.js"></script>
<script type="text/javascript"
        src="https://www.nutricia.com/etc/clientlibs/granite/jquery/granite.min.1cd927e8b915fa4931c6c086a8cfda10.js"></script>
<script type="text/javascript"
        src="https://www.nutricia.com/etc/clientlibs/foundation/jquery.min.d7c42e4a257b8b9fe38d1c53dd20d01a.js"></script>
<script type="text/javascript"
        src="https://www.nutricia.com/etc/clientlibs/foundation/main.min.3796a0cfc93d5c8ae49f2ff8bffab306.js"></script>
<script type="text/javascript"
        src="https://www.nutricia.com/etc/designs/nutricia/clientlibs-all.min.a8103a589013921ed061b09f998eac71.js"></script>


</body>

</html>