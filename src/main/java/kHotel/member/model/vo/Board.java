package kHotel.member.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Board {


	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private String boardDt;

}