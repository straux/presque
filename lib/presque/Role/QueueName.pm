package presque::Role::QueueName;

use Moose::Role;

sub _queue {
    my ($self, $queue_name) = @_;
    return $queue_name.':queue';
}

sub _queue_delayed {
    my ($self, $queue_name) = @_;
    return $queue_name.':delayed';
}

sub _queue_policy {
    my ($self, $queue_name) = @_;
    return $queue_name.':queuepolicy';
}

sub _queue_uuid {
    my ($self, $queue_name) = @_;
    return $queue_name;':UUID';
}

sub _queue_key {
    my ($self, $queue_name, $uuid) = @_;
    return $queue_name.':'.$uuid;
}

sub _queue_stat {
    my ($self, $queue_name) = @_;
    return 'queuestat:'.$queue_name;
}

1;