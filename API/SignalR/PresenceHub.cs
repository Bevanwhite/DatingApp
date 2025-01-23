using API.Extensions;
using API.SignalR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.SignalR;

namespace DatingApp.API.SignalR
{
    [Authorize]
    public class PresenceHub : Hub
    {
        private readonly PresenceTracker _tacker;

        public PresenceHub(PresenceTracker tacker)
        {
            _tacker = tacker;

        }
        public override async Task OnConnectedAsync()
        {
            await _tacker.UserConnected(Context.User.GetUserName(), Context.ConnectionId);
            await Clients.Others.SendAsync("UserIsOnline", Context.User.GetUserName());

            var currentUsers = await _tacker.GetOnlineUsers();
            await Clients.All.SendAsync("GetOnlineUsers", currentUsers);
        }

        public override async Task OnDisconnectedAsync(Exception exception)
        {
            await _tacker.UserConnected(Context.User.GetUserName(), Context.ConnectionId);

            await Clients.Others.SendAsync("UserIsOffline", Context.User.GetUserName());

            var currentUsers = await _tacker.GetOnlineUsers();

            await Clients.All.SendAsync("GetOnlineUsers", currentUsers);

            await base.OnDisconnectedAsync(exception);
        }
    }
}