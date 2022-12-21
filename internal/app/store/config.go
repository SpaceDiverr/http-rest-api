package store

type StoreConfig struct {
	DatabaseURL string `toml:"database_url"`
}

func NewConfig() *StoreConfig {
	return &StoreConfig{}
}
