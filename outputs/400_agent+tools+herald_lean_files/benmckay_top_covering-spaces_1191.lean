import Mathlib
open CategoryTheory

/-- Prove that every contractible space is connected and has trivial homotopy groups.
Save it to: benmckay_top_covering-sppaces_1191.lean -/
theorem isConnected_of_contractible (Y : Type u) [TopologicalSpace Y] (h : ContractibleSpace Y) :
    ConnectedSpace Y := by sorry
