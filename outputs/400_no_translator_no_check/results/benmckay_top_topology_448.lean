import Mathlib

/-
We state a corrected version of the (generally false) claim
"in a metric space, every closed and bounded set is compact".

The statement as written is false for arbitrary metric spaces (e.g. Q with the usual metric:
[0,1] ∩ Q is closed and bounded in Q but not compact). A correct sufficient hypothesis is
that the ambient metric space is proper (i.e. closed and bounded sets are compact).
Here we state this corrected lemma; the proof is omitted (:= by sorry) as requested.
-/

variable {X : Type*} [MetricSpace X]

theorem closed_bounded_isCompact_of_proper [ProperSpace X] {S : Set X}
  (hS : IsClosed (S : Set X))
  (hbd : ∃ (x0 : X) (R : ℝ), ∀ x ∈ S, dist x x0 ≤ R) :
  IsCompact (S : Set X) := by sorry
