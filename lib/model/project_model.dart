class Project {
  final String title;
  final String subtitle;
  final String description;
  final String imageUrl;
  final String projectUrl;
  final List<String> technologies;
  final String iosUrl;
  final String downloads;
  final String androidUrl;

  Project({
    required this.title,
    this.downloads = "",
    required this.subtitle,
    required this.description,
    required this.imageUrl,
    required this.projectUrl,
    required this.technologies,
    required this.iosUrl,
    required this.androidUrl,
  });

  @override
  String toString() {
    return 'Project{title: $title, subtitle: $subtitle, description: $description, imageUrl: $imageUrl, projectUrl: $projectUrl, technologies: $technologies, iosUrl: $iosUrl, androidUrl: $androidUrl}';
  }
}
