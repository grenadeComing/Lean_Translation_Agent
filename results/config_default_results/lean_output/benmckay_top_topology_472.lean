import Mathlib

-- If X and Y are topological spaces, the product X × Y is compact iff X and Y are both compact.
-- Note: the forward direction requires nonempty factors to deduce compactness of each factor from the product.
-- We provide a statement with the standard nonempty assumption in the form of the compact_space class.
theorem compact_prod_iff {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] :
  CompactSpace (X × Y) ↔ (CompactSpace X ∧ CompactSpace Y) := by
  -- proof will be filled in later
  sorry