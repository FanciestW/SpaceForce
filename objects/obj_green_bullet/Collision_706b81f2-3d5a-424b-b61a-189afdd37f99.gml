instance_destroy(self);
other.hits_left -= 1;
if (other.hits_left <= 0) {
	score += 100;
}