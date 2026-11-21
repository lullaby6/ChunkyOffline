# Cancel any running tasks, then start fresh from config.worlds.
function chunky_offline:utils/macro/command {"command":"chunky pause"}
function chunky_offline:utils/macro/command {"command":"chunky cancel"}
function chunky_offline:utils/macro/command {"command":"chunky confirm"}

function chunky_offline:chunky/start_worlds
function chunky_offline:utils/macro/command {"command":"chunky confirm"}
