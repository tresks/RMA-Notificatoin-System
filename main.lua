local LocalPlayer = game.Players.LocalPlayer;
local MainGui = LocalPlayer.MainGui or LocalPlayer:WaitForChild("MainGui");
local Notification = MainGui:WaitForChild("NotificationFrame");
local NotificationSound = MainGui["Main Gui Core"].NotificationSound;
function spawnNotification(p1, p2)
    local notification = Notification:Clone();
    notification.Parent = MainGui;
    notification.NotificationText.Text = p1;
    notification.Visible = true;
    NotificationSound:Play();
    if p2 then
        wait(p2);
    else
        wait(5);
    end;
    notification.Visible = false;
    notification:Destroy();
end;
