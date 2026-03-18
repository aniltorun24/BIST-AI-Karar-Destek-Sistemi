class ConfidenceScore {
  final double score;
  final String label;

  ConfidenceScore({required this.score, required this.label});

  Map<String, dynamic> toJson() {
    return {
      'score': score,
      'label': label,
    };
  }

  factory ConfidenceScore.fromJson(Map<String, dynamic> json) {
    return ConfidenceScore(
      score: json['score'] as double,
      label: json['label'] as String,
    );
  }
}