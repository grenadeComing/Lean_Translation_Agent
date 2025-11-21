import Mathlib

/-!
This file translates the following (incorrect in full generality) statement into Lean4:

"Let X be a metric space. Prove that if S ⊂ X is closed and bounded, then S is compact."

Remark: the statement as written is false for arbitrary metric spaces (e.g. the closed unit ball in an infinite-dimensional
normed space is closed and bounded but not compact). The usual correct hypotheses are that S is complete and totally bounded,
or that X is a proper metric space (complete and with totally bounded closed balls).
-/

variable {X : Type _} [MetricSpace X] {S : Set X}

theorem closed_bounded_compact (hs : IsClosed (S : Set X)) (hb : Metric.Bounded S) : IsCompact S := by sorry
