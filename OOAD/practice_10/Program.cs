using System.Runtime.CompilerServices;

public interface IAdvancedMediaPlayer
{
    // implicitly public abstract
    public string PlayVlc(string fileName);
    public string PlayMp4(string fileName);
}
public interface IMediaPlayer
{
    public string Play(string audioType, string fileName);
}
public class VlcPlayer : IAdvancedMediaPlayer
{
    public string PlayVlc(string fileName)
    => $"Playing vlc {fileName}";

    public string PlayMp4(string fileName)
    => $"vlc player cannot play mp4";

}
public class Mp4Player : IAdvancedMediaPlayer
{
    public string PlayVlc(string fileName)
    => $"mp4 player cannot play vlc";

    public string PlayMp4(string fileName)
    => $"Playing mp4 {fileName}";
}

public class MediaAdapter : IMediaPlayer
{
    private IAdvancedMediaPlayer? _advancedMusicPlayer;
    public MediaAdapter(string audioType)
    {
        if (audioType == "vlc")
            _advancedMusicPlayer = new VlcPlayer();
        if (audioType == "mp4")
            _advancedMusicPlayer = new Mp4Player();
    }
    public string Play(string audioType, string fileName)
    {
        if (audioType == "vlc")
            return _advancedMusicPlayer!.PlayVlc(fileName);
        if (audioType == "mp4")
            return _advancedMusicPlayer!.PlayMp4(fileName);
        return $"Invalid media type: {audioType}";
    }

}
public class AudioPlayer : IMediaPlayer
{
    private MediaAdapter? _mediaAdapter;
    public string Play(string audioType, string fileName)
    {
        if (audioType == "mp3")
            return $"Playing mp3 {fileName}";
        if (audioType == "vlc" || audioType == "mp4")
        {
            _mediaAdapter = new MediaAdapter(audioType);
            return _mediaAdapter.Play(audioType, fileName);
        }
        return $"Invalid media type: {audioType}";
    }

}
public class Client
{
    private static AudioPlayer? _audioPlayer;
    public static void Main()
    {
        _audioPlayer = new AudioPlayer();

        Console.WriteLine(_audioPlayer.Play("mp3", "beyond_the_horizon.mp3"));
        Console.WriteLine(_audioPlayer.Play("mp4", "alone.mp4"));
        Console.WriteLine(_audioPlayer.Play("vlc", "far_far_away.vlc"));
        Console.WriteLine(_audioPlayer.Play("avi", "mind_me.avi"));
    }
}
