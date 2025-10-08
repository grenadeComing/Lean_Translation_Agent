import Mathlib

/-- Let X be a Type and t : ι → TopologicalSpace X be a family of topologies on X.
There exists a unique smallest topology T on X containing all the collections t i,
meaning:
  (1) for all i and U, @IsOpen X (t i) U → @IsOpen X T U, and
  (2) for any T' : TopologicalSpace X, if (for all i and U, @IsOpen X (t i) U → @IsOpen X T' U)
      then (for all U, @IsOpen X T U → @IsOpen X T' U).
The proof is omitted (:= by sorry).
-/
theorem exists_unique_smallest_topology {X : Type*} {ι : Type*} (t : ι → TopologicalSpace X) :
  ∃! (T : TopologicalSpace X),
    (∀ (i : ι) (U : Set X), @IsOpen X (t i) U → @IsOpen X T U) ∧
    (∀ (T' : TopologicalSpace X),
      ( (∀ (i : ι) (U : Set X), @IsOpen X (t i) U → @IsOpen X T' U) →
        ∀ (U : Set X), @IsOpen X T U → @IsOpen X T' U)) := by sorry
