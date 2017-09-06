package amdsidep

import (
	"regexp"
)

// Parse the string and return a map of named group and the value
func parseNamedGroup(pattern, str string) map[string]string {
	r := regexp.MustCompile(pattern)
	match := r.FindStringSubmatch(str)

	// If find match, return each field and value as a map
	if match != nil {
		result := make(map[string]string)
		for i, name := range r.SubexpNames() {
			if i != 0 {
				result[name] = match[i]
			}
		}
		return result
	}

	// Otherwise return nil
	return nil
}

func remove(slice []int, s int) []int {
	return append(slice[:s], slice[s+1:]...)
}
