package storage

import (
	"github.com/wutong-paas/filebrowser/v2/auth"
	"github.com/wutong-paas/filebrowser/v2/settings"
	"github.com/wutong-paas/filebrowser/v2/share"
	"github.com/wutong-paas/filebrowser/v2/users"
)

// Storage is a storage powered by a Backend which makes the necessary
// verifications when fetching and saving data to ensure consistency.
type Storage struct {
	Users    users.Store
	Share    *share.Storage
	Auth     *auth.Storage
	Settings *settings.Storage
}
