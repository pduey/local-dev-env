#!/usr/bin/env python3.10

import iterm2
# This script was created with the "basic" environment which does not support adding dependencies
# with pip.

async def main(connection):
    app = await iterm2.async_get_app(connection)
    window1 = await iterm2.Window.async_create(connection)

    if window1 is not None:
        session_1_1 = app.current_terminal_window.current_tab.current_session
        size = iterm2.Size(width=200, height=50)
        await session_1_1.async_set_grid_size(size)
        session_1_5 = await session_1_1.async_split_pane(vertical=False)
        session_1_4 = await session_1_1.async_split_pane(vertical=False)
        session_1_3 = await session_1_1.async_split_pane(vertical=False)
        session_1_2 = await session_1_1.async_split_pane(vertical=False)
        session_2_1 = await session_1_1.async_split_pane(vertical=True)
        await session_1_2.async_activate()
        session_2_2 = await session_1_2.async_split_pane(vertical=True)
        await session_1_3.async_activate()
        session_2_3 = await session_1_3.async_split_pane(vertical=True)
        await session_1_4.async_activate()
        session_2_4 = await session_1_4.async_split_pane(vertical=True)
        await session_1_5.async_activate()
        session_2_5 = await session_1_5.async_split_pane(vertical=True)

        await session_1_1.async_activate()
        await session_1_1.async_send_text("setproject telapp/tas; bundle exec rails s -p 3030 -b 0.0.0.0\n")

        await session_1_2.async_activate()
        await session_1_2.async_send_text("setproject telapp/tas; bundle exec sidekiq -C config/sidekiq-non-prod.yml\n")

        await session_1_3.async_activate()
        await session_1_3.async_send_text("setproject member_master; bundle exec rails s -p 8080\n")

        await session_1_4.async_activate()
        await session_1_4.async_send_text("setproject erx_rails; bundle exec rails s -p 3600\n")

        await session_1_5.async_activate()
        await session_1_5.async_send_text("setproject fe-member-portal; npm run start:oneapp\n")

        await session_2_1.async_activate()
        await session_2_1.async_send_text("setproject telapp/mobile_api; bundle exec rails s -p 4567\n")

        await session_2_2.async_activate()
        await session_2_2.async_send_text("setproject health-info; bundle exec rails s -p 7000\n")

        await session_2_3.async_activate()
        await session_2_3.async_send_text("setproject telapp/member; bundle exec rails s -p 3400\n")

        await session_2_4.async_activate()
        await session_2_4.async_send_text("setproject telapp/admin; bundle exec rails s -p 3100\n")

        await session_2_5.async_activate()
        await session_2_5.async_send_text("setproject telapp/provider; bundle exec rails s -p 3500\n")
    else:
        print("Failed to open new window for servers")

iterm2.run_until_complete(main)
