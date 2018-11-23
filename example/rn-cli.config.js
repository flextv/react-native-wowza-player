const metro = require('metro')
const blacklist = metro.createBlacklist([
  /node_modules\/react-native-wowza-player\/example\/.*/,
])

module.exports = {
  // Metro >=0.43
  resolver: {
    blacklistRE: blacklist,
  },
  // Metro <=0.42
  getBlacklistRE: function() {
    return blacklist
  },
}
