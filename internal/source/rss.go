package source

import (
	"context"

	"github.com/portwine777/tg-bot-news/internal/model"
)

type RSSSource struct {
	URL        string
	SourceID   int64
	SourceName string
}

func NewRSSSourceFromModel(m model.Source) RSSSource {
	return RSSSource{
		URL:        m.FeedURL,
		SourceID:   m.ID,
		SourceName: m.Name,
	}
}

func (s RSSSource) loadFeed(ctx context.Context, url string) (*rss.Feed, error) {
}
