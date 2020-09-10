local _f_sync_interacted = IntimitateInteractionExt.sync_interacted
function IntimitateInteractionExt:sync_interacted(peer, player, status, skip_alive_check)
    if self.tweak_data == "corpse_alarm_pager" and Network:is_client() then
        if status == 1 then
            status = "started"
        elseif status == 2 then
            status = "interrupted"
        elseif status == 3 then
            status = "complete"
        end
    end
    _f_sync_interacted(self, peer, player, status, skip_alive_check)
end