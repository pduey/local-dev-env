#!/usr/bin/env python3.10

import iterm2
# This script was created with the "basic" environment which does not support adding dependencies
# with pip.

async def main(connection):
    app = await iterm2.async_get_app(connection)
    window = await iterm2.Window.async_create(connection)

    if window is not None:
        size = iterm2.Size(width=140, height=40)
        tab = window.current_tab
        session = tab.current_session
        await session.async_set_grid_size(size)
        await tab.async_set_title('tas rails console')
        await session.async_send_text('setproject telapp/tas; bundle exec rails c\n')

        tab = await window.async_create_tab()
        session = tab.current_session
        await tab.async_set_title('TAS')
        await session.async_send_text('setproject telapp/tas\n')

        tab = await window.async_create_tab()
        session = tab.current_session
        await tab.async_set_title('MAPI')
        await session.async_send_text('setproject telapp/mobile_api\n')

        tab = await window.async_create_tab()
        session = tab.current_session
        await tab.async_set_title('MHF')
        await session.async_send_text('setproject telapp/dependencies/member_homepage_flows\n')

        tab = await window.async_create_tab()
        session = tab.current_session
        await tab.async_set_title('MHB')
        await session.async_send_text('setproject telapp/dependencies/member_homepage_backend\n')

        tab = await window.async_create_tab()
        session = tab.current_session
        await tab.async_set_title('teladoc_api')
        await session.async_send_text('setproject telapp/dependencies/teladoc_api\n')
    else:
        print("Failed to open new window for servers")

iterm2.run_until_complete(main)
