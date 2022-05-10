local LocalPlayer = game.Players.LocalPlayer;
local PlayerGui = LocalPlayer.PlayerGui or LocalPlayer:WaitForChild("PlayerGui");
local MainGui = PlayerGui:FindFirstChild("MainGui");
local notification = MainGui:WaitForChild("NotificationFrame");
local notificationSound = MainGui["Main Gui Core"].NotificationSound;
function spawnnotification(p1, p2)
    local notification = notification:Clone();
    notification.Parent = MainGui;
    notification.NotificationText.Text = p1;
    notification.Visible = true;
    notificationSound:Play();
    if p2 then
        wait(p2);
    else
        wait(5);
    end;
    notification.Visible = false;
    notification:Destroy();
end;
