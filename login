Schema::table('replies', function (Blueprint $table) {
    $table->autoIncrement('id');
    ....
    $table->foreign('announcement_id')->references('id')->on('announcements')->onDelete('cascade');
});


$replies = Reply::where('post_id', $announcement->id);
$announcements->delete($replies, $announcements);


$annoucement->replies();
