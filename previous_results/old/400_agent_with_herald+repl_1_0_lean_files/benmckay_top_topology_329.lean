import Mathlib

variable {X : Type _} [TopologicalSpace X]
variable {A : Set X}

/-- Closed subsets of a subspace A (viewed as subsets of A) are exactly the intersections of A
    with closed subsets of X. We state this using the coercion (coe : A → X) to compare sets in A
    and sets in X. -/
theorem isClosed_subtype_iff {s : Set A} :
  IsClosed (s : Set A) ↔ ∃ C : Set X, IsClosed C ∧ ( (coe : A → X) '' s = A ∩ C ) := by sorry

/-- The closure of a subset s ⊆ A inside A, when pushed forward to X, equals the intersection
    of A with the closure of s viewed as a subset of X. -/
theorem closure_subtype_eq {s : Set A} :
  (coe : A → X) '' (closure (s : Set A)) = closure ((coe : A → X) '' s) ∩ A := by sorry